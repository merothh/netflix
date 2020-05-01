.class public final Lo/YE;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/YE;

.field private static b:I

.field private static c:Ljava/lang/Integer;

.field private static d:I

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:I

.field private static j:Lo/YI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lo/YE;

    invoke-direct {v0}, Lo/YE;-><init>()V

    sput-object v0, Lo/YE;->a:Lo/YE;

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/YE;->c:Ljava/lang/Integer;

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lo/YE;->h:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .line 30
    sget-object v0, Lo/YE;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 26
    sput p1, Lo/YE;->i:I

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .line 18
    sput-object p1, Lo/YE;->c:Ljava/lang/Integer;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 22
    sget v0, Lo/YE;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 20
    sput p1, Lo/YE;->d:I

    return-void
.end method

.method public final c()I
    .locals 1

    .line 24
    sget v0, Lo/YE;->e:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 22
    sput p1, Lo/YE;->b:I

    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 0

    .line 30
    sput-object p1, Lo/YE;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 32
    sput-object p1, Lo/YE;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    .line 26
    sget v0, Lo/YE;->i:I

    return v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    .line 18
    sget-object v0, Lo/YE;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    .line 24
    sput p1, Lo/YE;->e:I

    return-void
.end method

.method public final e(Lo/YI;)V
    .locals 0

    .line 34
    sput-object p1, Lo/YE;->j:Lo/YI;

    return-void
.end method

.method public final h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lo/YE;->h:Ljava/util/Set;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lo/YE;->f:Ljava/lang/String;

    return-object v0
.end method
