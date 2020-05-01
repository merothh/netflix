.class Lo/abu$Application$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$Application;->saveUserCredentials(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/abu$Application;


# direct methods
.method constructor <init>(Lo/abu$Application;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lo/abu$Application$2;->b:Lo/abu$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 817
    iget-object v0, p0, Lo/abu$Application$2;->b:Lo/abu$Application;

    iget-object v0, v0, Lo/abu$Application;->b:Lo/abu;

    invoke-static {v0}, Lo/abu;->k(Lo/abu;)V

    return-void
.end method
