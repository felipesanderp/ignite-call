<<<<<<< HEAD
import { Box, styled, Text } from '@ignite-ui/react'
=======
import { Box, Text, styled } from '@ignite-ui/react'
>>>>>>> 53ff53e4a9aace6114e6d4b5c146fd0b8dc58bc6

export const ProfileBox = styled(Box, {
  marginTop: '$6',
  display: 'flex',
  flexDirection: 'column',
  gap: '$4',

  label: {
    display: 'flex',
    flexDirection: 'column',
    gap: '$2',
  },
})

export const FormAnnotation = styled(Text, {
  color: '$gray200',
})
