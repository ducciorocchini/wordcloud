library(wordcloud)
library(RColorBrewer)
 
# Define the words and their frequency
# words <- c("Spatial", "Visualization", "Ecolinformatics", "Theoretical", 
           "Computational", "Open", "Remote")

# Define other words and their frequency
words <- c("Running", "Art", "Books", "Countryside", 
           "Trips", "Oca", "Mountain")

# Assigning the frequency of each word (here, just assuming each word has a frequency of 1 for simplicity)
# frequencies <- rep(1, length(words))
# Or different frequencies
frequencies <- c(25, 23, 20, 19, 20, 6, 18)  # Each word gets a different frequency

# Colors
# Use a predefined color palette (e.g., "Set3")
# https://www.datanovia.com/en/blog/the-a-z-of-rcolorbrewer-palette/
# colors <- brewer.pal(7, "GnBu")  # 7 colors from the "Set3" palette
colors <- brewer.pal(7, "OrRd")  # 7 colors from the "Set3" palette


# Create the word cloud with colors
# Horizontal:
# wordcloud(words = words, freq = frequencies, min.freq = 1, scale = c(3, 0.5), colors = brewer.pal(8, "Spectral"))

# Mixed:

# Create the word cloud with both vertical and horizontal words and different colors
pdf("outwords2.pdf")
wordcloud(words = words, freq = frequencies, min.freq = 1, scale = c(3, 0.5), 
          colors = colors, rot.per = 0.5)  # Rotate 50% of words vertically
dev.off()
