.class public Lcom/fasterxml/jackson/core/JsonFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    }
.end annotation


# static fields
.field protected static final a:I

.field protected static final b:I

.field protected static final e:I

.field private static final m:Lo/UsbPortStatus;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final transient c:Lo/ExtractEditText;

.field protected final transient d:Lo/InputMethodService;

.field protected f:I

.field protected g:Lo/UsbManager;

.field protected h:I

.field protected i:I

.field protected j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected k:Lo/UsbPortStatus;

.field protected l:Lcom/fasterxml/jackson/core/io/OutputDecorator;

.field protected o:Lcom/fasterxml/jackson/core/io/InputDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->c()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->b:I

    .line 170
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    .line 176
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->a:I

    .line 178
    sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->a:Lcom/fasterxml/jackson/core/io/SerializedString;

    sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->m:Lo/UsbPortStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lo/UsbManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;Lo/UsbManager;)V
    .locals 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Lo/InputMethodService;->a()Lo/InputMethodService;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:Lo/InputMethodService;

    .line 202
    invoke-static {}, Lo/ExtractEditText;->a()Lo/ExtractEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lo/ExtractEditText;

    .line 222
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->b:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:I

    .line 227
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 232
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->a:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:I

    .line 260
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->m:Lo/UsbPortStatus;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lo/UsbPortStatus;

    .line 289
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lo/UsbManager;

    .line 290
    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->h:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:I

    .line 291
    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 292
    iget p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->i:I

    iput p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:I

    .line 293
    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->j:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 294
    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->o:Lcom/fasterxml/jackson/core/io/InputDecorator;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->o:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 295
    iget-object p2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->l:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->l:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    .line 296
    iget-object p1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lo/UsbPortStatus;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lo/UsbPortStatus;

    return-void
.end method

.method public constructor <init>(Lo/UsbManager;)V
    .locals 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Lo/InputMethodService;->a()Lo/InputMethodService;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->d:Lo/InputMethodService;

    .line 202
    invoke-static {}, Lo/ExtractEditText;->a()Lo/ExtractEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->c:Lo/ExtractEditText;

    .line 222
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->b:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:I

    .line 227
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    .line 232
    sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->a:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->i:I

    .line 260
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->m:Lo/UsbPortStatus;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lo/UsbPortStatus;

    .line 280
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lo/UsbManager;

    return-void
.end method


# virtual methods
.method protected final b(Ljava/io/OutputStream;Lo/AbstractInputMethodService;)Ljava/io/OutputStream;
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->l:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    if-eqz v0, :cond_0

    .line 1498
    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->a(Lo/AbstractInputMethodService;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method protected final c(Ljava/io/InputStream;Lo/AbstractInputMethodService;)Ljava/io/InputStream;
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->o:Lcom/fasterxml/jackson/core/io/InputDecorator;

    if-eqz v0, :cond_0

    .line 1459
    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/core/io/InputDecorator;->a(Lo/AbstractInputMethodService;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public c()Lo/IInputMethodWrapper;
    .locals 2

    .line 1537
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->c:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->h:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    invoke-static {}, Lo/Keyboard;->b()Lo/IInputMethodWrapper;

    move-result-object v0

    return-object v0

    .line 1540
    :cond_0
    new-instance v0, Lo/IInputMethodWrapper;

    invoke-direct {v0}, Lo/IInputMethodWrapper;-><init>()V

    return-object v0
.end method

.method public d(Ljava/lang/Object;Z)Lo/AbstractInputMethodService;
    .locals 2

    .line 1548
    new-instance v0, Lo/AbstractInputMethodService;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->c()Lo/IInputMethodWrapper;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lo/AbstractInputMethodService;-><init>(Lo/IInputMethodWrapper;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .line 349
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->g:Lo/UsbManager;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lo/UsbManager;)V

    return-object v0
.end method
