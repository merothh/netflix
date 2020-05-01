.class public Lo/kx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    iput-object p1, p0, Lo/kx;->d:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    return-void
.end method

.method public static c(I)Lo/kx;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->e(I)Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    new-instance v0, Lo/kx;

    invoke-direct {v0, p0}, Lo/kx;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lo/kx;
    .locals 1

    const-string v0, ""

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lo/kx;->c(I)Lo/kx;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z
    .locals 1

    .line 28
    iget-object v0, p0, Lo/kx;->d:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 24
    iget-object v0, p0, Lo/kx;->d:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->c()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 25
    iget-object v0, p0, Lo/kx;->d:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->e:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/kx;->d:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
