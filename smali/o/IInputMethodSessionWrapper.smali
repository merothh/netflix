.class public Lo/IInputMethodSessionWrapper;
.super Lo/UsbEndpoint;
.source ""


# instance fields
.field protected a:Lo/CompactExtractEditLayout;

.field protected b:Lo/IInputMethodSessionWrapper;

.field protected final d:Lo/IInputMethodSessionWrapper;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected j:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(ILo/IInputMethodSessionWrapper;Lo/CompactExtractEditLayout;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lo/UsbEndpoint;-><init>()V

    .line 71
    iput p1, p0, Lo/IInputMethodSessionWrapper;->e:I

    .line 72
    iput-object p2, p0, Lo/IInputMethodSessionWrapper;->d:Lo/IInputMethodSessionWrapper;

    .line 73
    iput-object p3, p0, Lo/IInputMethodSessionWrapper;->a:Lo/CompactExtractEditLayout;

    const/4 p1, -0x1

    .line 74
    iput p1, p0, Lo/IInputMethodSessionWrapper;->c:I

    return-void
.end method

.method private final a(Lo/CompactExtractEditLayout;Ljava/lang/String;)V
    .locals 3

    .line 177
    invoke-virtual {p1, p2}, Lo/CompactExtractEditLayout;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1}, Lo/CompactExtractEditLayout;->d()Ljava/lang/Object;

    move-result-object p1

    .line 179
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonGenerator;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static c(Lo/CompactExtractEditLayout;)Lo/IInputMethodSessionWrapper;
    .locals 3

    .line 115
    new-instance v0, Lo/IInputMethodSessionWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lo/IInputMethodSessionWrapper;-><init>(ILo/IInputMethodSessionWrapper;Lo/CompactExtractEditLayout;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    .line 167
    iget v0, p0, Lo/IInputMethodSessionWrapper;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lo/IInputMethodSessionWrapper;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lo/IInputMethodSessionWrapper;->h:Z

    .line 171
    iput-object p1, p0, Lo/IInputMethodSessionWrapper;->g:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lo/IInputMethodSessionWrapper;->a:Lo/CompactExtractEditLayout;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p1}, Lo/IInputMethodSessionWrapper;->a(Lo/CompactExtractEditLayout;Ljava/lang/String;)V

    .line 173
    :cond_1
    iget p1, p0, Lo/IInputMethodSessionWrapper;->c:I

    if-gez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x4

    return p1
.end method

.method protected a(I)Lo/IInputMethodSessionWrapper;
    .locals 1

    .line 78
    iput p1, p0, Lo/IInputMethodSessionWrapper;->e:I

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lo/IInputMethodSessionWrapper;->c:I

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lo/IInputMethodSessionWrapper;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lo/IInputMethodSessionWrapper;->h:Z

    .line 82
    iput-object p1, p0, Lo/IInputMethodSessionWrapper;->j:Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lo/IInputMethodSessionWrapper;->a:Lo/CompactExtractEditLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/CompactExtractEditLayout;->b()V

    :cond_0
    return-object p0
.end method

.method public f()Lo/IInputMethodSessionWrapper;
    .locals 3

    .line 119
    iget-object v0, p0, Lo/IInputMethodSessionWrapper;->b:Lo/IInputMethodSessionWrapper;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lo/IInputMethodSessionWrapper;

    iget-object v2, p0, Lo/IInputMethodSessionWrapper;->a:Lo/CompactExtractEditLayout;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lo/CompactExtractEditLayout;->c()Lo/CompactExtractEditLayout;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Lo/IInputMethodSessionWrapper;-><init>(ILo/IInputMethodSessionWrapper;Lo/CompactExtractEditLayout;)V

    iput-object v0, p0, Lo/IInputMethodSessionWrapper;->b:Lo/IInputMethodSessionWrapper;

    return-object v0

    .line 124
    :cond_1
    invoke-virtual {v0, v1}, Lo/IInputMethodSessionWrapper;->a(I)Lo/IInputMethodSessionWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lo/IInputMethodSessionWrapper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lo/IInputMethodSessionWrapper;
    .locals 3

    .line 128
    iget-object v0, p0, Lo/IInputMethodSessionWrapper;->b:Lo/IInputMethodSessionWrapper;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lo/IInputMethodSessionWrapper;

    iget-object v2, p0, Lo/IInputMethodSessionWrapper;->a:Lo/CompactExtractEditLayout;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lo/CompactExtractEditLayout;->c()Lo/CompactExtractEditLayout;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Lo/IInputMethodSessionWrapper;-><init>(ILo/IInputMethodSessionWrapper;Lo/CompactExtractEditLayout;)V

    iput-object v0, p0, Lo/IInputMethodSessionWrapper;->b:Lo/IInputMethodSessionWrapper;

    return-object v0

    .line 133
    :cond_1
    invoke-virtual {v0, v1}, Lo/IInputMethodSessionWrapper;->a(I)Lo/IInputMethodSessionWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lo/IInputMethodSessionWrapper;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/IInputMethodSessionWrapper;->d:Lo/IInputMethodSessionWrapper;

    return-object v0
.end method

.method public j()I
    .locals 4

    .line 186
    iget v0, p0, Lo/IInputMethodSessionWrapper;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 187
    iget-boolean v0, p0, Lo/IInputMethodSessionWrapper;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 190
    :cond_0
    iput-boolean v2, p0, Lo/IInputMethodSessionWrapper;->h:Z

    .line 191
    iget v0, p0, Lo/IInputMethodSessionWrapper;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/IInputMethodSessionWrapper;->c:I

    return v1

    .line 196
    :cond_1
    iget v0, p0, Lo/IInputMethodSessionWrapper;->e:I

    if-ne v0, v3, :cond_3

    .line 197
    iget v0, p0, Lo/IInputMethodSessionWrapper;->c:I

    .line 198
    iget v1, p0, Lo/IInputMethodSessionWrapper;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Lo/IInputMethodSessionWrapper;->c:I

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 204
    :cond_3
    iget v0, p0, Lo/IInputMethodSessionWrapper;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/IInputMethodSessionWrapper;->c:I

    .line 205
    iget v0, p0, Lo/IInputMethodSessionWrapper;->c:I

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    :goto_1
    return v2
.end method
