.class public final Lo/Credentials;
.super Lo/UsbEndpoint;
.source ""


# instance fields
.field protected final a:Lo/Credentials;

.field protected b:I

.field protected final d:Lo/CompactExtractEditLayout;

.field protected g:Ljava/lang/Object;

.field protected i:Lo/Credentials;

.field protected j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/Credentials;Lo/CompactExtractEditLayout;II)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lo/UsbEndpoint;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lo/Credentials;->i:Lo/Credentials;

    .line 55
    iput-object p1, p0, Lo/Credentials;->a:Lo/Credentials;

    .line 56
    iput-object p2, p0, Lo/Credentials;->d:Lo/CompactExtractEditLayout;

    .line 57
    iput p3, p0, Lo/Credentials;->e:I

    .line 58
    iput p4, p0, Lo/Credentials;->b:I

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lo/Credentials;->c:I

    return-void
.end method

.method private a(Lo/CompactExtractEditLayout;Ljava/lang/String;)V
    .locals 4

    .line 178
    invoke-virtual {p1, p2}, Lo/CompactExtractEditLayout;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 181
    invoke-virtual {p1}, Lo/CompactExtractEditLayout;->e()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0
.end method

.method public static e(Lo/CompactExtractEditLayout;)Lo/Credentials;
    .locals 4

    .line 87
    new-instance v0, Lo/Credentials;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lo/Credentials;-><init>(Lo/Credentials;Lo/CompactExtractEditLayout;II)V

    return-object v0
.end method


# virtual methods
.method public b(I)Lo/Credentials;
    .locals 3

    .line 105
    iget-object v0, p0, Lo/Credentials;->i:Lo/Credentials;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lo/Credentials;

    iget-object v2, p0, Lo/Credentials;->d:Lo/CompactExtractEditLayout;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v2}, Lo/CompactExtractEditLayout;->c()Lo/CompactExtractEditLayout;

    move-result-object v2

    :goto_0
    invoke-direct {v0, p0, v2, v1, p1}, Lo/Credentials;-><init>(Lo/Credentials;Lo/CompactExtractEditLayout;II)V

    iput-object v0, p0, Lo/Credentials;->i:Lo/Credentials;

    return-object v0

    .line 112
    :cond_1
    invoke-virtual {v0, v1, p1}, Lo/Credentials;->d(II)V

    return-object v0
.end method

.method protected d(II)V
    .locals 0

    .line 64
    iput p1, p0, Lo/Credentials;->e:I

    .line 65
    iput p2, p0, Lo/Credentials;->b:I

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lo/Credentials;->c:I

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lo/Credentials;->j:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lo/Credentials;->g:Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lo/Credentials;->d:Lo/CompactExtractEditLayout;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lo/CompactExtractEditLayout;->b()V

    :cond_0
    return-void
.end method

.method public e(I)Lo/Credentials;
    .locals 3

    .line 92
    iget-object v0, p0, Lo/Credentials;->i:Lo/Credentials;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lo/Credentials;

    iget-object v2, p0, Lo/Credentials;->d:Lo/CompactExtractEditLayout;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v2}, Lo/CompactExtractEditLayout;->c()Lo/CompactExtractEditLayout;

    move-result-object v2

    :goto_0
    invoke-direct {v0, p0, v2, v1, p1}, Lo/Credentials;-><init>(Lo/Credentials;Lo/CompactExtractEditLayout;II)V

    iput-object v0, p0, Lo/Credentials;->i:Lo/Credentials;

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v0, v1, p1}, Lo/Credentials;->d(II)V

    :goto_1
    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lo/Credentials;->j:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lo/Credentials;->d:Lo/CompactExtractEditLayout;

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, v0, p1}, Lo/Credentials;->a(Lo/CompactExtractEditLayout;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 135
    iget v0, p0, Lo/Credentials;->b:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/Credentials;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 3

    .line 147
    iget v0, p0, Lo/Credentials;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/Credentials;->c:I

    iget v2, p0, Lo/Credentials;->b:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public i()Lo/Credentials;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/Credentials;->a:Lo/Credentials;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 134
    iget v0, p0, Lo/Credentials;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    iget v1, p0, Lo/Credentials;->e:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x7b

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lo/Credentials;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x22

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Lo/Credentials;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lo/ExtractEditLayout;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x7d

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x5b

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lo/Credentials;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "/"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
