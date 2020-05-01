.class public final Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HV;-><init>()V
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
.field final synthetic b:Lo/HV;


# direct methods
.method public constructor <init>(Lo/HV;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;->b:Lo/HV;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/GY;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;->b:Lo/HV;

    invoke-static {v0}, Lo/HV;->c(Lo/HV;)Lo/HY;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 58
    instance-of v1, p1, Lo/GY$ActionBar$ActionBar;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 59
    check-cast p1, Lo/GY$ActionBar$ActionBar;

    invoke-virtual {p1}, Lo/GY$ActionBar$ActionBar;->a()I

    move-result p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;->b:Lo/HV;

    invoke-virtual {v1}, Lo/HV;->o()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 60
    sget-object p1, Lo/HV;->h:Lo/HV$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 61
    invoke-virtual {v0, v2}, Lo/HY;->b(Z)V

    goto/16 :goto_2

    .line 63
    :cond_1
    :goto_0
    sget-object p1, Lo/HV;->h:Lo/HV$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 64
    invoke-virtual {v0, v3}, Lo/HY;->b(Z)V

    goto/16 :goto_2

    .line 68
    :cond_2
    instance-of v1, p1, Lo/GY$ActionBar$Application;

    if-eqz v1, :cond_5

    .line 69
    check-cast p1, Lo/GY$ActionBar$Application;

    invoke-virtual {p1}, Lo/GY$ActionBar$Application;->b()I

    move-result p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;->b:Lo/HV;

    invoke-virtual {v1}, Lo/HV;->o()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 70
    sget-object p1, Lo/HV;->h:Lo/HV$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 71
    invoke-virtual {v0, v2}, Lo/HY;->d(Z)V

    goto/16 :goto_2

    .line 73
    :cond_4
    :goto_1
    sget-object p1, Lo/HV;->h:Lo/HV$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 74
    invoke-virtual {v0, v3}, Lo/HY;->d(Z)V

    goto :goto_2

    .line 78
    :cond_5
    instance-of v1, p1, Lo/GY$ActionBar$TaskDescription;

    if-eqz v1, :cond_7

    .line 79
    check-cast p1, Lo/GY$ActionBar$TaskDescription;

    invoke-virtual {p1}, Lo/GY$ActionBar$TaskDescription;->d()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;->b:Lo/HV;

    invoke-virtual {v2}, Lo/HV;->o()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 80
    sget-object v1, Lo/HV;->h:Lo/HV$ActionBar;

    check-cast v1, Lo/MessagePdu;

    .line 81
    invoke-virtual {p1}, Lo/GY$ActionBar$TaskDescription;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/HY;->c(Z)V

    goto :goto_2

    .line 85
    :cond_7
    instance-of v1, p1, Lo/GY$ActionBar$Activity;

    if-eqz v1, :cond_9

    .line 86
    check-cast p1, Lo/GY$ActionBar$Activity;

    invoke-virtual {p1}, Lo/GY$ActionBar$Activity;->e()I

    move-result p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;->b:Lo/HV;

    invoke-virtual {v0}, Lo/HV;->o()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 87
    sget-object p1, Lo/HV;->h:Lo/HV$ActionBar;

    check-cast p1, Lo/MessagePdu;

    goto :goto_2

    .line 91
    :cond_9
    instance-of v1, p1, Lo/GY$ActionBar$StateListAnimator;

    if-eqz v1, :cond_b

    .line 92
    check-cast p1, Lo/GY$ActionBar$StateListAnimator;

    invoke-virtual {p1}, Lo/GY$ActionBar$StateListAnimator;->a()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;->b:Lo/HV;

    invoke-virtual {v2}, Lo/HV;->o()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 93
    sget-object v1, Lo/HV;->h:Lo/HV$ActionBar;

    check-cast v1, Lo/MessagePdu;

    .line 94
    invoke-virtual {p1}, Lo/GY$ActionBar$StateListAnimator;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/HY;->c(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;->a(Lo/GY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
