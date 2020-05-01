.class Lo/abL$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abL;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/abL;


# direct methods
.method constructor <init>(Lo/abL;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/abL$4;->b:Lo/abL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "eog"

    const-string v1, "Manager is here!"

    .line 147
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lo/abL$4;->b:Lo/abL;

    invoke-static {v0, p1, p2}, Lo/abL;->e(Lo/abL;Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    const-string p1, "eog"

    const-string p2, "Netflix service is not fully initialized"

    .line 153
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
