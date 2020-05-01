.class public final Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIViewImpl$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Debug$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Debug$1;


# direct methods
.method public constructor <init>(Lo/Debug$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIViewImpl$3$1;->b:Lo/Debug$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "showId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIViewImpl$3$1;->b:Lo/Debug$1;

    iget-object v0, v0, Lo/Debug$1;->c:Lo/Debug;

    new-instance v1, Lo/CommonClock$ActionBar;

    invoke-direct {v1, p1, p2}, Lo/CommonClock$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/Debug;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIViewImpl$3$1;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
