.class Lo/DESKeySpec$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DESKeySpec$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;->c(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/IntKeyframeSet;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lo/DESKeySpec;

.field final synthetic e:Lo/AlarmManager;


# direct methods
.method constructor <init>(Lo/DESKeySpec;Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lo/DESKeySpec$8;->d:Lo/DESKeySpec;

    iput-object p2, p0, Lo/DESKeySpec$8;->a:Lo/IntKeyframeSet;

    iput-object p3, p0, Lo/DESKeySpec$8;->c:Ljava/lang/Object;

    iput-object p4, p0, Lo/DESKeySpec$8;->e:Lo/AlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/DESedeKeySpec;)V
    .locals 3

    .line 882
    iget-object p1, p0, Lo/DESKeySpec$8;->d:Lo/DESKeySpec;

    iget-object v0, p0, Lo/DESKeySpec$8;->a:Lo/IntKeyframeSet;

    iget-object v1, p0, Lo/DESKeySpec$8;->c:Ljava/lang/Object;

    iget-object v2, p0, Lo/DESKeySpec$8;->e:Lo/AlarmManager;

    invoke-virtual {p1, v0, v1, v2}, Lo/DESKeySpec;->c(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V

    return-void
.end method
