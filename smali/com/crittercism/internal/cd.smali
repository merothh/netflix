.class public final Lcom/crittercism/internal/cd;
.super Lcom/crittercism/internal/bn;


# static fields
.field public static final a:Lcom/crittercism/internal/cd;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/crittercism/internal/cd;

    const-string/jumbo v1, "session_start"

    sget v2, Lcom/crittercism/internal/cd$a;->a:I

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/cd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/cd;->a:Lcom/crittercism/internal/cd;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v0}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/crittercism/internal/cd;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/16 v1, 0x8c

    .line 35
    invoke-direct {p0}, Lcom/crittercism/internal/bn;-><init>()V

    .line 37
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cd;->d:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/crittercism/internal/cd;->b:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/crittercism/internal/cd;->c:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/crittercism/internal/cd;->e:I

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 52
    .line 1067
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1068
    iget-object v1, p0, Lcom/crittercism/internal/cd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1069
    iget-object v1, p0, Lcom/crittercism/internal/cd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BREADCRUMB WRITING "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 56
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/crittercism/internal/cd;->d:Ljava/lang/String;

    return-object v0
.end method
