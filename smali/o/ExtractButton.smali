.class public abstract Lo/ExtractButton;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source ""


# static fields
.field protected static final c:I


# instance fields
.field protected a:I

.field protected b:Lo/IInputMethodSessionWrapper;

.field protected d:Lo/UsbManager;

.field protected e:Z

.field protected g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->j:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 32
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->d()I

    move-result v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->i:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 33
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->d()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->h:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 34
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->d()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lo/ExtractButton;->c:I

    return-void
.end method

.method public constructor <init>(ILo/UsbManager;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    .line 105
    iput p1, p0, Lo/ExtractButton;->a:I

    .line 106
    iput-object p2, p0, Lo/ExtractButton;->d:Lo/UsbManager;

    .line 107
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->h:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->c(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    invoke-static {p0}, Lo/CompactExtractEditLayout;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)Lo/CompactExtractEditLayout;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 109
    :goto_0
    invoke-static {p2}, Lo/IInputMethodSessionWrapper;->c(Lo/CompactExtractEditLayout;)Lo/IInputMethodSessionWrapper;

    move-result-object p2

    iput-object p2, p0, Lo/ExtractButton;->b:Lo/IInputMethodSessionWrapper;

    .line 110
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->j:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->c(I)Z

    move-result p1

    iput-boolean p1, p0, Lo/ExtractButton;->e:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lo/ExtractButton;->g:Z

    return-void
.end method

.method public d()Lo/UsbEndpoint;
    .locals 1

    .line 270
    iget-object v0, p0, Lo/ExtractButton;->b:Lo/IInputMethodSessionWrapper;

    return-object v0
.end method

.method protected abstract d(Ljava/lang/String;)V
.end method

.method protected abstract e()V
.end method

.method public final e(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    .line 148
    iget v0, p0, Lo/ExtractButton;->a:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->d()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
