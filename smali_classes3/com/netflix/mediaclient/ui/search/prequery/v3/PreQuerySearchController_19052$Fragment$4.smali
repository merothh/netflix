.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Fragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Fragment;->b(Lo/SectionIndexer;Lo/RtlSpacingHelper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/RtlSpacingHelper;


# direct methods
.method constructor <init>(Lo/RtlSpacingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Fragment$4;->e:Lo/RtlSpacingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Fragment$4;->e:Lo/RtlSpacingHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/RtlSpacingHelper;->scrollToPosition(I)V

    return-void
.end method
