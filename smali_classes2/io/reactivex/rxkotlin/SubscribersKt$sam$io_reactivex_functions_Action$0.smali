.class final Lio/reactivex/rxkotlin/SubscribersKt$sam$io_reactivex_functions_Action$0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic function:Lo/alB;


# direct methods
.method constructor <init>(Lo/alB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxkotlin/SubscribersKt$sam$io_reactivex_functions_Action$0;->function:Lo/alB;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxkotlin/SubscribersKt$sam$io_reactivex_functions_Action$0;->function:Lo/alB;

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invoke(...)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
