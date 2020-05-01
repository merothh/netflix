.class final Lo/ZN$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecoverySystem$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZN;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/ZN;


# direct methods
.method constructor <init>(Lo/ZN;)V
    .locals 0

    iput-object p1, p0, Lo/ZN$StateListAnimator;->e:Lo/ZN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 1

    .line 193
    iget-object v0, p0, Lo/ZN$StateListAnimator;->e:Lo/ZN;

    invoke-static {v0}, Lo/ZN;->a(Lo/ZN;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->a(Z)V

    return-void
.end method
