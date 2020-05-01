.class final Lo/FillContext$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FillContext;->b(Landroid/os/Handler;Lo/cm;Lo/TextClock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lo/cm;


# direct methods
.method constructor <init>(Lo/cm;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo/FillContext$TaskDescription;->d:Lo/cm;

    iput-object p2, p0, Lo/FillContext$TaskDescription;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lo/FillContext$TaskDescription;->d:Lo/cm;

    .line 47
    iget-object v1, p0, Lo/FillContext$TaskDescription;->c:Ljava/lang/Object;

    .line 48
    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    .line 46
    invoke-interface {v0, v1, v2}, Lo/cm;->e(Ljava/lang/Object;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
