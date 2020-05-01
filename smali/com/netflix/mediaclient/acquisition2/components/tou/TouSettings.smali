.class public final enum Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

.field public static final enum b:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

.field public static final enum c:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

.field public static final enum d:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

.field public static final enum e:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

.field private static final synthetic j:[Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;


# instance fields
.field private final f:I

.field private final g:I

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    new-instance v7, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    .line 12
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->rn:I

    .line 13
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->re:I

    const-string v2, "US"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;-><init>(Ljava/lang/String;IZII)V

    sput-object v7, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->c:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    .line 17
    sget v12, Lcom/netflix/mediaclient/ui/R$AssistContent;->rd:I

    .line 18
    sget v13, Lcom/netflix/mediaclient/ui/R$AssistContent;->rb:I

    const-string v9, "FR"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v8, v1

    .line 15
    invoke-direct/range {v8 .. v13}, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;-><init>(Ljava/lang/String;IZII)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->b:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    .line 22
    sget v7, Lcom/netflix/mediaclient/ui/R$AssistContent;->qZ:I

    .line 23
    sget v8, Lcom/netflix/mediaclient/ui/R$AssistContent;->rc:I

    const-string v4, "EU"

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v3, v1

    .line 20
    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;-><init>(Ljava/lang/String;IZII)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->d:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    .line 27
    sget v7, Lcom/netflix/mediaclient/ui/R$AssistContent;->rh:I

    .line 28
    sget v8, Lcom/netflix/mediaclient/ui/R$AssistContent;->rf:I

    const-string v4, "KR"

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v3, v1

    .line 25
    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;-><init>(Ljava/lang/String;IZII)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->e:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    .line 32
    sget v7, Lcom/netflix/mediaclient/ui/R$AssistContent;->ri:I

    .line 33
    sget v8, Lcom/netflix/mediaclient/ui/R$AssistContent;->ri:I

    const-string v4, "RoW"

    const/4 v5, 0x4

    move-object v3, v1

    .line 30
    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;-><init>(Ljava/lang/String;IZII)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->a:Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->j:[Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->i:Z

    iput p4, p0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->g:I

    iput p5, p0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->j:[Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->f:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->g:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition2/components/tou/TouSettings;->i:Z

    return v0
.end method
