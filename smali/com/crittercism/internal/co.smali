.class public final Lcom/crittercism/internal/co;
.super Lcom/crittercism/internal/cp;


# static fields
.field private static final serialVersionUID:J = -0x530b0a06947479bfL


# instance fields
.field public a:Z

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/crittercism/internal/cp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/co;->c:[Ljava/lang/String;

    const-string/jumbo v0, "\\r\\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/co;->c:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/crittercism/internal/co;->a:Z

    return-void
.end method


# virtual methods
.method public final printStackTrace(Ljava/io/PrintStream;)V
    .locals 4

    iget-object v1, p0, Lcom/crittercism/internal/co;->c:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    const-string/jumbo v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v1, p0, Lcom/crittercism/internal/co;->c:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
