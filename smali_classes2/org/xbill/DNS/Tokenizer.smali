.class public Lorg/xbill/DNS/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# static fields
.field public static final COMMENT:I = 0x5

.field public static final EOF:I = 0x0

.field public static final EOL:I = 0x1

.field public static final IDENTIFIER:I = 0x3

.field public static final QUOTED_STRING:I = 0x4

.field public static final WHITESPACE:I = 0x2

.field private static delim:Ljava/lang/String;

.field private static quotes:Ljava/lang/String;


# instance fields
.field private current:Lorg/xbill/DNS/Tokenizer$Token;

.field private delimiters:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private is:Ljava/io/PushbackInputStream;

.field private line:I

.field private multiline:I

.field private quoting:Z

.field private sb:Ljava/lang/StringBuffer;

.field private ungottenToken:Z

.field private wantClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, " \t\n;()\""

    sput-object v0, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    const-string/jumbo v0, "\""

    sput-object v0, Lorg/xbill/DNS/Tokenizer;->quotes:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    iput-boolean v2, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    iput v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    iput-boolean v2, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    sget-object v0, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    new-instance v0, Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer$Token;-><init>(Lorg/xbill/DNS/Tokenizer$1;)V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    const-string/jumbo v0, "<none>"

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private _getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method private checkUnbalancedParens()V
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v0, :cond_0

    const-string/jumbo v0, "unbalanced parentheses"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private getChar()I
    .locals 3

    const/16 v1, 0xa

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_0
    move v0, v1

    :cond_1
    if-ne v0, v1, :cond_2

    iget v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    :cond_2
    return v0
.end method

.method private remainingStrings()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    if-nez v0, :cond_2

    :goto_1
    return-object v1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_1
    iget-object v2, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private skipWhitespace()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v2, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ungetChar(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3

    new-instance v0, Lorg/xbill/DNS/Tokenizer$TokenizerException;

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    invoke-direct {v0, v1, v2, p1}, Lorg/xbill/DNS/Tokenizer$TokenizerException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->close()V

    return-void
.end method

.method public get()Lorg/xbill/DNS/Tokenizer$Token;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;
    .locals 9

    const/4 v1, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    if-eqz v0, :cond_3

    iput-boolean v5, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v1, 0x2

    invoke-static {v0, v1, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_1
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v2

    if-eq v2, v6, :cond_5

    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_16

    :cond_5
    if-ne v2, v6, :cond_8

    iget-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-eqz v1, :cond_6

    const-string/jumbo v0, "EOF in quoted string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v0, v5, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v1, v0, v2}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_15

    if-eq v0, v1, :cond_15

    const/16 v3, 0x28

    if-ne v2, v3, :cond_9

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    :cond_9
    const/16 v3, 0x29

    if-ne v2, v3, :cond_b

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v2, :cond_a

    const-string/jumbo v0, "invalid close parenthesis"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_a
    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    :cond_b
    const/16 v3, 0x22

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-nez v2, :cond_c

    iput-boolean v8, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    sget-object v0, Lorg/xbill/DNS/Tokenizer;->quotes:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :cond_c
    iput-boolean v5, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    sget-object v2, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    iput-object v2, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    :cond_d
    const/16 v3, 0xa

    if-ne v2, v3, :cond_e

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v0, v8, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_14

    :goto_2
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_f

    if-ne v2, v6, :cond_10

    :cond_f
    if-eqz p2, :cond_11

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_11
    if-ne v2, v6, :cond_12

    if-eq v0, v1, :cond_12

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v0, v5, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v2, :cond_13

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v0, v8, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_15
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_1a

    if-eq v0, v1, :cond_1a

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    invoke-static {v0, v5, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_19

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v2

    if-ne v2, v6, :cond_17

    const-string/jumbo v0, "unterminated escape sequence"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_17
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_18
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_19
    iget-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-eqz v3, :cond_18

    const/16 v3, 0xa

    if-ne v2, v3, :cond_18

    const-string/jumbo v0, "newline in quoted string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_1a
    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v1, v0, v2}, Lorg/xbill/DNS/Tokenizer$Token;->access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getAddress(I)Ljava/net/InetAddress;
    .locals 1

    const-string/jumbo v0, "an address"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getAddressBytes(I)[B
    .locals 3

    const-string/jumbo v0, "an address"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v1
.end method

.method public getBase32String(Lorg/xbill/DNS/utils/base32;)[B
    .locals 1

    const-string/jumbo v0, "a base32 string"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/utils/base32;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "invalid base32 encoding"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public getBase64()[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getBase64(Z)[B
    .locals 1

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "expected base64 encoded string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "invalid base64 encoding"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getEOL()V
    .locals 3

    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "expected EOL or EOF"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public getHex()[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getHex(Z)[B
    .locals 1

    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "expected hex encoded string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "invalid hex encoding"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getHexString()[B
    .locals 1

    const-string/jumbo v0, "a hex string"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "invalid hex encoding"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "an identifier"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong()J
    .locals 2

    const-string/jumbo v0, "an integer"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "expected an integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "expected an integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 2

    const-string/jumbo v0, "a name"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v1
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "expected a string"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTTL()J
    .locals 2

    const-string/jumbo v0, "a TTL value"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "expected a TTL value"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getTTLLike()J
    .locals 2

    const-string/jumbo v0, "a TTL-like value"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "expected a TTL-like value"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getUInt16()I
    .locals 4

    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const-string/jumbo v0, "expected an 16 bit unsigned integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method public getUInt32()J
    .locals 4

    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const-string/jumbo v0, "expected an 32 bit unsigned integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_1
    return-wide v0
.end method

.method public getUInt8()I
    .locals 4

    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const-string/jumbo v0, "expected an 8 bit unsigned integer"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method public unget()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot unget multiple tokens"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    :cond_1
    iput-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    return-void
.end method
