.class public Lcom/netflix/mediaclient/ui/mdx/MiniPlayerFactory;
.super Ljava/lang/Object;
.source "MiniPlayerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMiniPlayer(Landroid/content/Context;)Landroid/app/Fragment;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;-><init>()V

    goto :goto_0
.end method
