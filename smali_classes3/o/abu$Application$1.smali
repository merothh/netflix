.class Lo/abu$Application$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$Application;->playbackTokenActivate(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/abu$Application;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/abu$Application;Ljava/lang/String;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lo/abu$Application$1;->b:Lo/abu$Application;

    iput-object p2, p0, Lo/abu$Application$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 867
    iget-object v0, p0, Lo/abu$Application$1;->b:Lo/abu$Application;

    iget-object v1, p0, Lo/abu$Application$1;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/abu$Application;->e(Lo/abu$Application;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
