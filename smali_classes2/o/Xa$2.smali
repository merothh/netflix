.class final Lo/Xa$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xa;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Xa;


# direct methods
.method constructor <init>(Lo/Xa;)V
    .locals 0

    iput-object p1, p0, Lo/Xa$2;->a:Lo/Xa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 57
    iget-object p1, p0, Lo/Xa$2;->a:Lo/Xa;

    sget-object v0, Lo/UU$VoiceInteractor;->a:Lo/UU$VoiceInteractor;

    invoke-virtual {p1, v0}, Lo/Xa;->e(Ljava/lang/Object;)V

    return-void
.end method
