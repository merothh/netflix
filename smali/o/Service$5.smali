.class Lo/Service$5;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Service;-><init>(Landroid/content/Context;Lo/SearchDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Service;

.field final synthetic d:Lo/Service;


# direct methods
.method constructor <init>(Lo/Service;Landroid/content/Context;Lo/Service;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lo/Service$5;->d:Lo/Service;

    iput-object p3, p0, Lo/Service$5;->b:Lo/Service;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .line 260
    iget-object v0, p0, Lo/Service$5;->b:Lo/Service;

    invoke-static {v0}, Lo/Service;->d(Lo/Service;)V

    .line 261
    iget-object v0, p0, Lo/Service$5;->b:Lo/Service;

    new-instance v1, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v2, Lcom/bugsnag/android/NativeInterface$MessageType;->q:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    .line 261
    invoke-virtual {v0, v1}, Lo/Service;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
