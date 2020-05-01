.class public Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsFactory;
.super Ljava/lang/Object;
.source "InteractiveMomentsFactory.java"


# static fields
.field public static final KONG:Ljava/lang/String; = "kong"

.field public static final WORD_PARTY:Ljava/lang/String; = "wordparty"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManager(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/iko/InteractiveMomentsManager;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "kong"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;-><init>()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "wordparty"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;-><init>()V

    goto :goto_0
.end method
