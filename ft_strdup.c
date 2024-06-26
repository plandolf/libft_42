/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: plandolf <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/05 17:11:59 by plandolf          #+#    #+#             */
/*   Updated: 2023/05/06 15:18:08 by plandolf         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
#include "libft.h"

char	*ft_strdup(const char *s)
{
	const char	*str;
	size_t		s_len;

	s_len = ft_strlen(s);
	str = malloc(s_len * sizeof(char) + 1);
	if (str == NULL)
		return (NULL);
	ft_strlcpy((char *)str, s, s_len + 1);
	return ((char *)str);
}
