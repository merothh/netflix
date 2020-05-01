.class public final Lo/FO$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DN$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/FO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/FO;)V
    .locals 1

    const-string v0, "detailsPageTabContentUIView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/FO$Activity;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public e(II)V
    .locals 1

    .line 395
    iget-object v0, p0, Lo/FO$Activity;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FO;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/FO;->b(II)V

    :cond_0
    return-void
.end method
