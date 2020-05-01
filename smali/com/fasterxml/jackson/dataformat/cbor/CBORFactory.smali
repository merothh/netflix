.class public Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;
.super Lcom/fasterxml/jackson/core/JsonFactory;
.source ""


# static fields
.field static final m:I

.field static final n:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected s:I

.field protected t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->b()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->m:I

    .line 52
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;-><init>(Lo/UsbManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/UsbManager;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lo/UsbManager;)V

    .line 96
    iget p2, p1, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->s:I

    .line 97
    iget p1, p1, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->t:I

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->t:I

    return-void
.end method

.method public constructor <init>(Lo/UsbManager;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lo/UsbManager;)V

    .line 83
    sget p1, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->m:I

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->s:I

    .line 84
    sget p1, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->n:I

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->t:I

    return-void
.end method

.method private final e(Lo/AbstractInputMethodService;IILo/UsbManager;Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;
    .locals 6

    .line 417
    new-instance p4, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->g:Lo/UsbManager;

    move-object v0, p4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;-><init>(Lo/AbstractInputMethodService;IILo/UsbManager;Ljava/io/OutputStream;)V

    .line 418
    sget-object p1, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0xd9f7

    .line 419
    invoke-virtual {p4, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(I)V

    :cond_0
    return-object p4
.end method


# virtual methods
.method public a([B)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
    .locals 2

    .line 295
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->d([BII)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    move-result-object p1

    return-object p1
.end method

.method protected a([BIILo/AbstractInputMethodService;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
    .locals 6

    .line 392
    new-instance v0, Lo/ConnectivityMetricsEvent;

    invoke-direct {v0, p4, p1, p2, p3}, Lo/ConnectivityMetricsEvent;-><init>(Lo/AbstractInputMethodService;[BII)V

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->h:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->f:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->s:I

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->g:Lo/UsbManager;

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->c:Lo/ExtractEditText;

    invoke-virtual/range {v0 .. v5}, Lo/ConnectivityMetricsEvent;->c(IIILo/UsbManager;Lo/ExtractEditText;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;Z)Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;
    .locals 0

    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->d(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->c(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    :goto_0
    return-object p0
.end method

.method protected b(Ljava/io/InputStream;Lo/AbstractInputMethodService;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
    .locals 6

    .line 365
    new-instance v0, Lo/ConnectivityMetricsEvent;

    invoke-direct {v0, p2, p1}, Lo/ConnectivityMetricsEvent;-><init>(Lo/AbstractInputMethodService;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->h:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->f:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->s:I

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->g:Lo/UsbManager;

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->c:Lo/ExtractEditText;

    invoke-virtual/range {v0 .. v5}, Lo/ConnectivityMetricsEvent;->c(IIILo/UsbManager;Lo/ExtractEditText;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;
    .locals 1

    .line 257
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->b()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->t:I

    return-object p0
.end method

.method public d(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;
    .locals 1

    .line 248
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->b()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->t:I

    return-object p0
.end method

.method public d(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;
    .locals 7

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->d(Ljava/lang/Object;Z)Lo/AbstractInputMethodService;

    move-result-object v2

    .line 342
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->i:I

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->t:I

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->g:Lo/UsbManager;

    .line 344
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->b(Ljava/io/OutputStream;Lo/AbstractInputMethodService;)Ljava/io/OutputStream;

    move-result-object v6

    move-object v1, p0

    .line 342
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->e(Lo/AbstractInputMethodService;IILo/UsbManager;Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->d(Ljava/lang/Object;Z)Lo/AbstractInputMethodService;

    move-result-object v0

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->c(Ljava/io/InputStream;Lo/AbstractInputMethodService;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->b(Ljava/io/InputStream;Lo/AbstractInputMethodService;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    move-result-object p1

    return-object p1
.end method

.method public d([BII)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
    .locals 4

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->d(Ljava/lang/Object;Z)Lo/AbstractInputMethodService;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->o:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->o:Lcom/fasterxml/jackson/core/io/InputDecorator;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/fasterxml/jackson/core/io/InputDecorator;->e(Lo/AbstractInputMethodService;[BII)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->b(Ljava/io/InputStream;Lo/AbstractInputMethodService;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    move-result-object p1

    return-object p1

    .line 308
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->a([BIILo/AbstractInputMethodService;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Z)Lo/AbstractInputMethodService;
    .locals 0

    .line 355
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->d(Ljava/lang/Object;Z)Lo/AbstractInputMethodService;

    move-result-object p1

    return-object p1
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 121
    new-instance v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->g:Lo/UsbManager;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;-><init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/UsbManager;)V

    return-object v0
.end method
