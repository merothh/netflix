.class public final Lcom/crittercism/internal/eb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/crittercism/internal/eb;


# instance fields
.field private b:Lcom/crittercism/internal/ec;

.field private c:Ljava/lang/ThreadLocal;

.field private d:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/crittercism/internal/eb;

    invoke-direct {v0}, Lcom/crittercism/internal/eb;-><init>()V

    sput-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/crittercism/internal/eb$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/crittercism/internal/eb$a;-><init>(Lcom/crittercism/internal/eb;B)V

    iput-object v0, p0, Lcom/crittercism/internal/eb;->b:Lcom/crittercism/internal/ec;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/eb;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/eb;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private b()Ljava/text/SimpleDateFormat;
    .locals 3

    iget-object v0, p0, Lcom/crittercism/internal/eb;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    iget-object v1, p0, Lcom/crittercism/internal/eb;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/eb;->b()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/crittercism/internal/eb;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    iget-object v1, p0, Lcom/crittercism/internal/eb;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/eb;->b:Lcom/crittercism/internal/ec;

    invoke-interface {v0}, Lcom/crittercism/internal/ec;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/internal/eb;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/internal/eb;->b()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
