/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: maralves <maralves@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/17 21:32:09 by maralves          #+#    #+#             */
/*   Updated: 2025/08/04 16:43:37 by maralves         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dest, const char *src, size_t size)
{
	size_t	count;
	size_t	len_dest;
	size_t	len_src;

	count = 0;
	while (count < size && dest[count])
		count++;
	len_dest = count;
	count = 0;
	while (src[count])
		count++;
	len_src = count;
	if (size <= len_dest)
		return (size + len_src);
	count = 0;
	while ((len_dest + count + 1) < size && src[count])
	{
		dest[len_dest + count] = src[count];
		count++;
	}
	dest[len_dest + count] = '\0';
	return (len_dest + len_src);
}
