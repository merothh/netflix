.class Lo/La;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final d:Lo/KX;


# direct methods
.method public constructor <init>(Lo/KX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/La;->d:Lo/KX;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/La;->d:Lo/KX;

    invoke-static {v0, p1}, Lo/KX;->d(Lo/KX;Landroid/view/View;)V

    return-void
.end method
