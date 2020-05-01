.class public Lo/InstrumentationInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstantAppResolveInfo;


# instance fields
.field private final b:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lo/InstrumentationInfo;->b:Ljava/io/File;

    return-void
.end method

.method public static b(Ljava/io/File;)Lo/InstrumentationInfo;
    .locals 1

    if-eqz p0, :cond_0

    .line 66
    new-instance v0, Lo/InstrumentationInfo;

    invoke-direct {v0, p0}, Lo/InstrumentationInfo;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 39
    iget-object v0, p0, Lo/InstrumentationInfo;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 2

    .line 34
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lo/InstrumentationInfo;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/InstrumentationInfo;->b:Ljava/io/File;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 49
    instance-of v0, p1, Lo/InstrumentationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    check-cast p1, Lo/InstrumentationInfo;

    .line 53
    iget-object v0, p0, Lo/InstrumentationInfo;->b:Ljava/io/File;

    iget-object p1, p1, Lo/InstrumentationInfo;->b:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 58
    iget-object v0, p0, Lo/InstrumentationInfo;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method
