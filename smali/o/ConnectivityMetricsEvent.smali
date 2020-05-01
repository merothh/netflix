.class public Lo/ConnectivityMetricsEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final a:Ljava/io/InputStream;

.field protected final b:Lo/AbstractInputMethodService;

.field protected final c:[B

.field protected d:I

.field protected e:I

.field protected final i:Z

.field protected j:I


# direct methods
.method public constructor <init>(Lo/AbstractInputMethodService;Ljava/io/InputStream;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lo/ConnectivityMetricsEvent;->b:Lo/AbstractInputMethodService;

    .line 64
    iput-object p2, p0, Lo/ConnectivityMetricsEvent;->a:Ljava/io/InputStream;

    .line 65
    invoke-virtual {p1}, Lo/AbstractInputMethodService;->e()[B

    move-result-object p1

    iput-object p1, p0, Lo/ConnectivityMetricsEvent;->c:[B

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lo/ConnectivityMetricsEvent;->e:I

    iput p1, p0, Lo/ConnectivityMetricsEvent;->d:I

    .line 67
    iput p1, p0, Lo/ConnectivityMetricsEvent;->j:I

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lo/ConnectivityMetricsEvent;->i:Z

    return-void
.end method

.method public constructor <init>(Lo/AbstractInputMethodService;[BII)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lo/ConnectivityMetricsEvent;->b:Lo/AbstractInputMethodService;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lo/ConnectivityMetricsEvent;->a:Ljava/io/InputStream;

    .line 75
    iput-object p2, p0, Lo/ConnectivityMetricsEvent;->c:[B

    .line 76
    iput p3, p0, Lo/ConnectivityMetricsEvent;->e:I

    add-int/2addr p4, p3

    .line 77
    iput p4, p0, Lo/ConnectivityMetricsEvent;->d:I

    neg-int p1, p3

    .line 79
    iput p1, p0, Lo/ConnectivityMetricsEvent;->j:I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lo/ConnectivityMetricsEvent;->i:Z

    return-void
.end method


# virtual methods
.method protected a(I)Z
    .locals 7

    .line 187
    iget-object v0, p0, Lo/ConnectivityMetricsEvent;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 194
    :cond_0
    iget v0, p0, Lo/ConnectivityMetricsEvent;->d:I

    iget v2, p0, Lo/ConnectivityMetricsEvent;->e:I

    sub-int/2addr v0, v2

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_2

    .line 196
    iget-object v3, p0, Lo/ConnectivityMetricsEvent;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lo/ConnectivityMetricsEvent;->c:[B

    iget v5, p0, Lo/ConnectivityMetricsEvent;->d:I

    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ge v3, v2, :cond_1

    return v1

    .line 200
    :cond_1
    iget v2, p0, Lo/ConnectivityMetricsEvent;->d:I

    add-int/2addr v2, v3

    iput v2, p0, Lo/ConnectivityMetricsEvent;->d:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    return v2
.end method

.method public c(IIILo/UsbManager;Lo/ExtractEditText;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p5

    .line 88
    invoke-virtual {v2, p1}, Lo/ExtractEditText;->d(I)Lo/ExtractEditText;

    move-result-object v6

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p0, v1}, Lo/ConnectivityMetricsEvent;->a(I)Z

    .line 91
    new-instance v12, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    iget-object v2, v0, Lo/ConnectivityMetricsEvent;->b:Lo/AbstractInputMethodService;

    iget-object v7, v0, Lo/ConnectivityMetricsEvent;->a:Ljava/io/InputStream;

    iget-object v8, v0, Lo/ConnectivityMetricsEvent;->c:[B

    iget v9, v0, Lo/ConnectivityMetricsEvent;->e:I

    iget v10, v0, Lo/ConnectivityMetricsEvent;->d:I

    iget-boolean v11, v0, Lo/ConnectivityMetricsEvent;->i:Z

    move-object v1, v12

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v11}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;-><init>(Lo/AbstractInputMethodService;IILo/UsbManager;Lo/ExtractEditText;Ljava/io/InputStream;[BIIZ)V

    .line 94
    iget v1, v0, Lo/ConnectivityMetricsEvent;->e:I

    iget v1, v0, Lo/ConnectivityMetricsEvent;->d:I

    return-object v12
.end method
