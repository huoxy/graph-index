%setdefault('data', None)
%import config
% if data:
    % target = '&'.join('target=' + m for m in data)
<div class = 'graph-row'>
    <table class = 'graph'>
        <tr>
            <td>
                <img class = 'day' src = '{{config.graphite_url}}/render/?width=600&height=400&{{target}}&title={{server}} - {{plugin}} - day&hideLegend=False' />
            </td>
            <td>
                <img class = 'week' src = '{{config.graphite_url}}/render/?width=600&height=400&{{target}}&from=-7d&title={{server}} - {{plugin}} - week&hideLegend=False' />
            </td>
        </tr>
        <tr>
            <td>
                <img class = 'month' src = '{{config.graphite_url}}/render/?width=600&height=400&{{target}}&from=-30d&title={{server}} - {{plugin}} - month&hideLegend=False' />
            </td>
            <td>
                <img class = 'year' src = '{{config.graphite_url}}/render/?width=600&height=400&{{target}}&from=-365d&title={{server}} - {{plugin}} - year&hideLegend=False' />
            </td>
        </tr>
    </table>
</div>
% end
