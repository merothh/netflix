.class final Lo/SpellCheckerService$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SpellCheckerService;->d(Lo/TrustAgentService;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/SpellCheckerService;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/SpellCheckerService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/SpellCheckerService$ActionBar;->c:Lo/SpellCheckerService;

    iput-object p2, p0, Lo/SpellCheckerService$ActionBar;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 58
    iget-object p1, p0, Lo/SpellCheckerService$ActionBar;->c:Lo/SpellCheckerService;

    iget-object v0, p0, Lo/SpellCheckerService$ActionBar;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/SpellCheckerService;->c(Ljava/lang/String;)V

    return-void
.end method
