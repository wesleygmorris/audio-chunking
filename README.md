# Audio chunking
In this project I used self-supervised learning techniques to perform probablisitic chunking of spoken language using deep learning

## Dataset
- The dataset was 146.3 hours of natural speech by a single speaker, pulled from the Revolutions podcast by Mike Duncan.
- I split the audio into 10-second clips and extracted mel-frequency cepstrum coefficients with a stride of 0.001 seconds from each clip.
- Each timestep consisted of a vector with 13 mel frequency coefficients
## Training
- I used keras by TensorFlow to set up a recursive neural network with 13 input nodes, 13 output nodes, and a single hidden layer of 36 nodes with an LSTM activation function.
- The output was the same as the input, except shifted one time step to the left and stripping the ends of both the input and targets.
- Thus the target for each timestep was the same as the input for the next timestep.
- I trained the model for 10 epcohs using rmsprop as the optimizer with a learning rate of 0.001, a batch size of 36, and a recurrent dropout rate of 0.5. Mean squared error was used as loss function.
## Analysis
- After training the model, I tested it on a held out test set.
- I used cosine similarity to determine the error between the predicted vector for each timestep and the target error. High cosine similarity indicates an unexpected or anomalous speech sound.
- I tracked the anomalous speech sounds to determine where chunking might happen if language was learned probabilistically.
## Results
- I found that cosine similarity dropped on stressed syllables, indicating that these speech sounds were probabalisitically anomolous.
- F1 for detecting stressed syllables was 0.73.
## Discussion
- This study aligns with studies in developmental psycholinguists that find that infants find stressed syllables to be most salient (de Carvalho et al., 2019)
- Identifying stressed syllables may be the first step toward chunking and identifying words.
- Indentification of stressed syllables may be learned probabilistically.
