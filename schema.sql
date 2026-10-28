
CREATE TABLE Projects (
    ProjectID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(150) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);

CREATE TABLE Characters (
    CharacterID INT IDENTITY(1,1) PRIMARY KEY,
    ProjectID INT FOREIGN KEY REFERENCES Projects(ProjectID) ON DELETE CASCADE,
    CharacterName NVARCHAR(100) NOT NULL,
    PromptNotes NVARCHAR(MAX),
    GeneratedPrompt NVARCHAR(MAX)
);

CREATE TABLE SceneSequences (
    SequenceID INT IDENTITY(1,1) PRIMARY KEY,
    ProjectID INT FOREIGN KEY REFERENCES Projects(ProjectID) ON DELETE CASCADE,
    SceneNumber INT NOT NULL,
    SceneTitle NVARCHAR(150),
    ActionDescription NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE()
);