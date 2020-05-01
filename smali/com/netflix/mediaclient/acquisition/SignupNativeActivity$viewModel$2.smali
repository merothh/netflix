.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$viewModel$2;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$viewModel$2;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    check-cast v0, Lo/Serializable;

    invoke-static {v0}, Lo/Exception;->e(Lo/Serializable;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$viewModel$2;->invoke()Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;

    move-result-object v0

    return-object v0
.end method
