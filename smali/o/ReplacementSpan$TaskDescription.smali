.class final Lo/ReplacementSpan$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ReplacementSpan;->d(Lo/GhostView;Lo/GhostView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLo/VrListenerService;Lo/alB;Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/alB;


# direct methods
.method constructor <init>(Lo/alB;)V
    .locals 0

    iput-object p1, p0, Lo/ReplacementSpan$TaskDescription;->a:Lo/alB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lo/ReplacementSpan$TaskDescription;->a:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method
