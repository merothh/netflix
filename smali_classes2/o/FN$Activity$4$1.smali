.class public final Lo/FN$Activity$4$1;
.super Lo/Zo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN$Activity$4;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lo/FN$Activity$4$1;->c:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lo/Zo;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method protected d(Lo/AQ;)V
    .locals 1

    const-string v0, "ratingInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected i(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
