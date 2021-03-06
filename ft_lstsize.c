/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstsize.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: frchaban <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/16 18:06:19 by frchaban          #+#    #+#             */
/*   Updated: 2020/04/27 16:57:40 by frchaban         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_lstsize(t_list *lst)
{
	int i;

	i = 1;
	if (lst)
	{
		while (lst->next)
		{
			i++;
			lst = lst->next;
		}
		return (i);
	}
	return (0);
}
