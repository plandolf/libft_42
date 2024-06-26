/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: plandolf <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/09 11:53:08 by plandolf          #+#    #+#             */
/*   Updated: 2023/05/10 09:21:37 by plandolf         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

void	ft_lstclear(t_list **lst, void (*del)(void*))
{
	t_list	*current;

	current = *lst;
	if (lst == NULL || del == NULL)
		return ;
	while (lst != NULL && *lst != NULL)
	{
		current = (*lst)-> next;
		ft_lstdelone(*lst, del);
		*lst = current;
	}
}
