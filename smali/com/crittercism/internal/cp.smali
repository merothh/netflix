.class public Lcom/crittercism/internal/cp;
.super Ljava/lang/Throwable;


# static fields
.field private static final serialVersionUID:J = -0x1b060f4d0d50af6bL


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/cp;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/crittercism/internal/cp;->b:Ljava/lang/String;

    :goto_0
    if-nez p3, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Lcom/crittercism/internal/cp;->a([Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/internal/cp;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void

    :cond_1
    const-string/jumbo v0, "JavaScript Exception"

    iput-object v0, p0, Lcom/crittercism/internal/cp;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\\r?\\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/StackTraceElement;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    aget-object v3, p0, v1

    if-eqz v3, :cond_5

    aget-object v3, p0, v0

    if-eqz v3, :cond_5

    aget-object v3, p0, v1

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    move v3, v0

    move-object v0, v2

    :goto_0
    if-nez v3, :cond_0

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    :cond_0
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    if-nez v1, :cond_1

    if-nez v3, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    add-int/lit8 v2, v1, -0x1

    :goto_2
    new-instance v4, Ljava/lang/StackTraceElement;

    const-string/jumbo v5, ""

    aget-object v6, p0, v1

    const-string/jumbo v7, ""

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    move v3, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/crittercism/internal/cp;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/crittercism/internal/cp;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
