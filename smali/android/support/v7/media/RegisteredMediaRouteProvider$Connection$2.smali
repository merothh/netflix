.class Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$2;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$2;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$2;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    iget-object v0, v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$2;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-static {v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->access$700(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    .line 510
    return-void
.end method
