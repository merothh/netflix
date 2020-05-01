.class Lo/JI$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JI;->b(Lcom/netflix/mediaclient/StatusCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/JI;


# direct methods
.method constructor <init>(Lo/JI;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/JI$5;->e:Lo/JI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lo/JI$5;->e:Lo/JI;

    const-string v0, "https://www.netflix.com/LoginHelp"

    invoke-static {p1, v0}, Lo/JI;->c(Lo/JI;Ljava/lang/String;)V

    return-void
.end method
