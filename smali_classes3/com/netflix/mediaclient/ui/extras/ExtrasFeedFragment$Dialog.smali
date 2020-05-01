.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lo/GY;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/GY;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    instance-of p1, p1, Lo/GY$ActionBar$Application;

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 89
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Dialog;->d(Lo/GY;)Z

    move-result p1

    return p1
.end method
