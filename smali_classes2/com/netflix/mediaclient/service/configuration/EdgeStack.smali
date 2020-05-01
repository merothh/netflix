.class public final enum Lcom/netflix/mediaclient/service/configuration/EdgeStack;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/configuration/EdgeStack;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

.field public static final enum b:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

.field public static final enum d:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

.field public static final enum e:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

.field private static final synthetic f:[Lcom/netflix/mediaclient/service/configuration/EdgeStack;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    const/4 v1, 0x0

    const-string v2, "PROD"

    invoke-direct {v0, v2, v1, v1}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->b:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    const/4 v2, 0x1

    const-string v3, "STAGING"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->a:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    const/4 v3, 0x2

    const-string v4, "INT"

    invoke-direct {v0, v4, v3, v3}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->d:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    const/4 v4, 0x3

    const-string v5, "TEST"

    invoke-direct {v0, v5, v4, v4}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->e:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    .line 5
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->b:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->a:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->d:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->e:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->f:[Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;
    .locals 1

    .line 5
    const-class v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/EdgeStack;
    .locals 1

    .line 5
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->f:[Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/EdgeStack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 31
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->c:I

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->d:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->d()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->c:I

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->e:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->c:I

    return v0
.end method
