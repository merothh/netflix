.class final Lo/TextValueSanitizer$TaskDescription$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TextValueSanitizer$TaskDescription;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lio/reactivex/subjects/PublishSubject;


# direct methods
.method constructor <init>(Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    iput-object p1, p0, Lo/TextValueSanitizer$TaskDescription$TaskDescription;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/TextValueSanitizer$TaskDescription$TaskDescription;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method
