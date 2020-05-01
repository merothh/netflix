.class final Lo/HB$TaskDescription$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HB$TaskDescription;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final c:Lo/HB$TaskDescription$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/HB$TaskDescription$Activity;

    invoke-direct {v0}, Lo/HB$TaskDescription$Activity;-><init>()V

    sput-object v0, Lo/HB$TaskDescription$Activity;->c:Lo/HB$TaskDescription$Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    .line 86
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 109
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 87
    sget-object v0, Lo/dJ;->b:Lo/dJ$TaskDescription;

    invoke-virtual {v0}, Lo/dJ$TaskDescription;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    .line 90
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 91
    sget-object v2, Lo/Pb;->b:Lo/Pb$StateListAnimator;

    invoke-virtual {v2}, Lo/Pb$StateListAnimator;->a()Ljava/lang/Class;

    move-result-object v2

    .line 89
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 97
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 98
    invoke-static {}, Lo/Oq;->g()Ljava/lang/Class;

    move-result-object v2

    .line 96
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
