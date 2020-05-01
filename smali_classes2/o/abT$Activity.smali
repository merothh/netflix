.class public final Lo/abT$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abT;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/abT;


# direct methods
.method constructor <init>(Lo/abT;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lo/abT$Activity;->c:Lo/abT;

    iput-object p2, p0, Lo/abT$Activity;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lo/abT$Activity;->c:Lo/abT;

    iget-object v0, p0, Lo/abT$Activity;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/abT;->c(Lo/abT;Ljava/lang/String;)V

    return-void
.end method
