.class public final Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$multiMonthOfferViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NA;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/Nr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/NA;


# direct methods
.method public constructor <init>(Lo/NA;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$multiMonthOfferViewModel$2;->e:Lo/NA;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lo/Nr;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$multiMonthOfferViewModel$2;->e:Lo/NA;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lo/Exception;->e(Landroidx/fragment/app/Fragment;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/Nr;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    check-cast v0, Lo/Nr;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$multiMonthOfferViewModel$2;->b()Lo/Nr;

    move-result-object v0

    return-object v0
.end method
