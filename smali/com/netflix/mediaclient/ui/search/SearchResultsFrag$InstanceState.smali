.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private restoreClickHistory(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1092
    if-nez p1, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    const-string/jumbo v0, "instance_state__click_history"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    const-string/jumbo v0, "instance_state__click_history"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1099
    if-eqz v2, :cond_0

    array-length v0, v2

    if-eqz v0, :cond_0

    .line 1103
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1104
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v2, v1

    .line 1105
    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1108
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private restoreGridViewPositions(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1031
    if-nez p1, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1000(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v0

    const-string/jumbo v1, "instance_state_suggestions_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreGridViewPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/StaticGridView;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1100(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v0

    const-string/jumbo v1, "instance_state_people_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreGridViewPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/StaticGridView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreGridViewPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/StaticGridView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1115
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1122
    if-eq v0, v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1100(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 1124
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1402(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    .line 1128
    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;Lcom/netflix/mediaclient/android/widget/StaticGridView;I)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1125
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1000(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 1126
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1502(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    goto :goto_1
.end method

.method private restoreLayoutPositions(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1040
    if-nez p1, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;

    move-result-object v0

    const-string/jumbo v1, "instance_state_suggestions_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreLayoutPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/FlowLayout;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;

    move-result-object v0

    const-string/jumbo v1, "instance_state_people_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreLayoutPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/FlowLayout;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreLayoutPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/FlowLayout;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1052
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1059
    if-eq v0, v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 1061
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1402(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    .line 1065
    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;Lcom/netflix/mediaclient/android/widget/FlowLayout;I)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1062
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 1063
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1502(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    goto :goto_1
.end method

.method private restoreQuery(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1082
    if-nez p1, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    const-string/jumbo v0, "instance_state_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const-string/jumbo v1, "instance_state_query"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$302(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private saveClickHistoryState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    .line 1158
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1159
    const-string/jumbo v1, "instance_state__click_history"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1162
    :cond_0
    return-void
.end method

.method private saveGridViewState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1400(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1166
    const-string/jumbo v0, "instance_state_people_selected_pos"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1400(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1170
    const-string/jumbo v0, "instance_state_suggestions_selected_pos"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1172
    :cond_1
    return-void
.end method

.method private saveQueryState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    const-string/jumbo v0, "instance_state_query"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_0
    return-void
.end method


# virtual methods
.method restore(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreGridViewPositions(Landroid/os/Bundle;)V

    .line 1025
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreLayoutPositions(Landroid/os/Bundle;)V

    .line 1026
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreClickHistory(Landroid/os/Bundle;)V

    .line 1027
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreQuery(Landroid/os/Bundle;)V

    .line 1028
    return-void
.end method

.method save(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1144
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->saveGridViewState(Landroid/os/Bundle;)V

    .line 1145
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->saveClickHistoryState(Landroid/os/Bundle;)V

    .line 1146
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->saveQueryState(Landroid/os/Bundle;)V

    .line 1147
    return-void
.end method
