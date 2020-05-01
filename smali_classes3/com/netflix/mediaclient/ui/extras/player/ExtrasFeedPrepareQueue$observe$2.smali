.class public final Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HX;->d(Lo/UnicodeScript;Lo/GK;Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GY;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/GK;

.field final synthetic d:Lo/HX;


# direct methods
.method public constructor <init>(Lo/HX;Lo/GK;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$2;->d:Lo/HX;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$2;->b:Lo/GK;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/GY;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 46
    check-cast p1, Lo/GY$ActionBar$ActionBar;

    .line 47
    sget-object v0, Lo/HX;->d:Lo/HX$Application;

    check-cast v0, Lo/MessagePdu;

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$2;->d:Lo/HX;

    invoke-virtual {p1}, Lo/GY$ActionBar$ActionBar;->a()I

    move-result p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$2;->b:Lo/GK;

    invoke-static {v0, p1, v1}, Lo/HX;->e(Lo/HX;ILo/GK;)V

    return-void

    .line 46
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.extras.events.ExtrasEvent.ItemEvent.Focus"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$2;->a(Lo/GY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
