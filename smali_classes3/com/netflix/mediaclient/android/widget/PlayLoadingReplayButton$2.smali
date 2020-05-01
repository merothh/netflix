.class public final Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/ListAdapter;


# direct methods
.method public constructor <init>(Lo/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$2;->b:Lo/ListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$2;->b:Lo/ListAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/ListAdapter;->e(Lo/ListAdapter;Z)V

    .line 173
    sget-object p1, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/PlayLoadingReplayButton$2;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
