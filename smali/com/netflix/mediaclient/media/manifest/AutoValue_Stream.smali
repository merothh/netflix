.class final Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream;
.super Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/manifest/AutoValue_Stream$GsonTypeAdapter;
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/util/List;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Lo/su;Lo/su;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/su;",
            "Lo/su;",
            "IIIIII)V"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p16}, Lcom/netflix/mediaclient/media/manifest/$AutoValue_Stream;-><init>(ILjava/util/List;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Lo/su;Lo/su;IIIIII)V

    return-void
.end method
