#pragma once

namespace mapreduce {

template<typename T> uintmax_t    const length(T const &str);
template<typename T> char const * const data(T const &str);

template<>
inline uintmax_t const length(std::string const &str)
{
    return str.length();
}

template<>
inline char const * const data(std::string const &str)
{
    return str.data();
}

}
