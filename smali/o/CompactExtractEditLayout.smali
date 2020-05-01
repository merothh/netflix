.class public Lo/CompactExtractEditLayout;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final b:Ljava/lang/Object;

.field protected c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/CompactExtractEditLayout;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonGenerator;)Lo/CompactExtractEditLayout;
    .locals 1

    .line 45
    new-instance v0, Lo/CompactExtractEditLayout;

    invoke-direct {v0, p0}, Lo/CompactExtractEditLayout;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Lcom/fasterxml/jackson/core/JsonParser;)Lo/CompactExtractEditLayout;
    .locals 1

    .line 41
    new-instance v0, Lo/CompactExtractEditLayout;

    invoke-direct {v0, p0}, Lo/CompactExtractEditLayout;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lo/CompactExtractEditLayout;->d:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lo/CompactExtractEditLayout;->e:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lo/CompactExtractEditLayout;->c:Ljava/util/HashSet;

    return-void
.end method

.method public c()Lo/CompactExtractEditLayout;
    .locals 2

    .line 49
    new-instance v0, Lo/CompactExtractEditLayout;

    iget-object v1, p0, Lo/CompactExtractEditLayout;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lo/CompactExtractEditLayout;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/CompactExtractEditLayout;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    .line 76
    iget-object v0, p0, Lo/CompactExtractEditLayout;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lo/CompactExtractEditLayout;->d:Ljava/lang/String;

    return v1

    .line 80
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 83
    :cond_1
    iget-object v0, p0, Lo/CompactExtractEditLayout;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 84
    iput-object p1, p0, Lo/CompactExtractEditLayout;->e:Ljava/lang/String;

    return v1

    .line 87
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 90
    :cond_3
    iget-object v0, p0, Lo/CompactExtractEditLayout;->c:Ljava/util/HashSet;

    if-nez v0, :cond_4

    .line 91
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lo/CompactExtractEditLayout;->c:Ljava/util/HashSet;

    .line 92
    iget-object v0, p0, Lo/CompactExtractEditLayout;->c:Ljava/util/HashSet;

    iget-object v1, p0, Lo/CompactExtractEditLayout;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lo/CompactExtractEditLayout;->c:Ljava/util/HashSet;

    iget-object v1, p0, Lo/CompactExtractEditLayout;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_4
    iget-object v0, p0, Lo/CompactExtractEditLayout;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public e()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 2

    .line 60
    iget-object v0, p0, Lo/CompactExtractEditLayout;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
