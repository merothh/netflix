.class final Lo/NdefRecord$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NdefRecord;-><init>(Landroid/view/View;ILandroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/NdefRecord;


# direct methods
.method constructor <init>(Lo/NdefRecord;)V
    .locals 0

    iput-object p1, p0, Lo/NdefRecord$Activity;->e:Lo/NdefRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 45
    invoke-static {v1, v0, v2, v1}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lo/NdefRecord$Activity;->e:Lo/NdefRecord;

    invoke-static {v1}, Lo/NdefRecord;->d(Lo/NdefRecord;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lo/NdefRecord;->b:Lo/NdefRecord$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 48
    iget-object v1, p0, Lo/NdefRecord$Activity;->e:Lo/NdefRecord;

    invoke-static {v1}, Lo/NdefRecord;->b(Lo/NdefRecord;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lo/NdefRecord$Activity;->e:Lo/NdefRecord;

    invoke-static {v0}, Lo/NdefRecord;->e(Lo/NdefRecord;)V

    :cond_0
    return-void
.end method
