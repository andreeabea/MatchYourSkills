package com.website.services;

import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class SearchFilter {

    private static SearchFilter searchFilter = null;

    private SearchFilter()
    {

    }

    public static SearchFilter getSearchFilter()
    {
        if(searchFilter ==null)
        {
            searchFilter = new SearchFilter();
        }
        return searchFilter;
    }

    public String filterSearch(String string)
    {
        if(string == null || string.equals(""))
        {
            return null;
        }
        String filteredResult = Arrays.stream(string.split("\\s+")).map(t -> t.substring(0, 1).toUpperCase()
                + t.substring(1)).collect(Collectors.joining(" "));

        return filteredResult;
    }

    public static <T> Predicate<T> distinctById(Function<? super T, ?> keyExtractor) {
        Set<Object> seen = ConcurrentHashMap.newKeySet();
        return t -> seen.add(keyExtractor.apply(t));
    }

}
