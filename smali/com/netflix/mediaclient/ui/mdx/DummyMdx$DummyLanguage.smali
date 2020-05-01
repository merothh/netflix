.class public Lcom/netflix/mediaclient/ui/mdx/DummyMdx$DummyLanguage;
.super Lcom/netflix/mediaclient/media/Language;
.source "DummyMdx.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V

    return-void
.end method
